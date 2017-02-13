""" light weight api """
import json
import falcon

class DemoResource:
    """ API Demo """
    def on_get(self, req, resp):
        """ get requests """
        resp.body = json.dumps({'demo': True})

API = falcon.API()
API.add_route('/demo', DemoResource())
