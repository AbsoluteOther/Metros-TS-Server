import HttpContentType = Enum.HttpContentType;

export type httpLog = {
    time: Number,
    request: RequestAsyncRequest,
    response: RequestAsyncResponse,
    extra: Object
};
