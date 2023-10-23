import configuration
import requests
import data


def post_new_order(body):  # post-запрос на создание нового заказа
    return requests.post(configuration.URL_SERVICE + configuration.NEW_ORDER,
                         json=body)


# выполнили запрос на получение заказа по треку заказа
def get_order_track(track_number):
    return requests.get(configuration.URL_SERVICE+configuration.NEW_TRACK+"?t="+track_number)
