import {HttpService} from "@rbxts/services";
import {httpLog} from "../../data/types/http.module";

class Http {
    requestCache = <Array<httpLog>>[{}];
    constructor() {

    }

    private async log(request: RequestAsyncRequest, response: RequestAsyncResponse, extra: Object) {
        const logResponse: httpLog = {
            time: tick(),
            request: request,
            response: response,
            extra: extra
        };
        this.requestCache.push(logResponse);
    }

    async request(request: RequestAsyncRequest, extra: Object) {
        const response = HttpService.RequestAsync(request);
        this.log(request, response, extra);
        return response;
    }
}

export default new Http();