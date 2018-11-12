from django.template.loader import render_to_string

from rest_framework.response import Response
from rest_framework.views import APIView

from article.list import list_most_recent, list_week_most_popular


class ArticleListPageRenderView(APIView):
    article_object_name = "article"
    page_size = None  # Leave None to use default
    template_name = "article/article_list_item.html"

    def get_list(self, page, page_size=None):
        raise NotImplementedError("The listing function must be implemented")

    def get_context(self):
        """
        Return dict with the extra context that we want to pass to render
        """
        return {}

    def _get_render_context(self, obj):
        res = {
            self.article_object_name: obj,
        }
        res.update(self.get_context())
        return res

    def get(self, request, *args, **kwargs):

        page = self.request.query_params.get('page')
        page_size = self.request.query_params.get('page_size')

        html = ""
        has_next = False

        list_context = {}

        if page_size:
            list_context.update({
                'page_size': page_size
            })
        if page:
            list_context.update({
                'page': page
            })

            has_next, objects = self.get_list(**list_context)

            html = "".join([
                render_to_string(
                    self.template_name, self._get_render_context(obj)
                ) for obj in objects
            ])
        return Response({
            'has_next': has_next,
            'html': html
        })


class ListMostRecentPageView(ArticleListPageRenderView):

    def get_list(self, page, page_size=None):
        return list_most_recent(page, page_size)


class ListWeekMostPopularPageView(ArticleListPageRenderView):

    def get_list(self, page, page_size=None):
        return list_week_most_popular(page, page_size)
