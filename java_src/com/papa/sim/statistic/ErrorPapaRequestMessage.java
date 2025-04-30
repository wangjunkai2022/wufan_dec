package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class ErrorPapaRequestMessage {
    private RequestStatsArgs args;
    private String modeltype;

    public ErrorPapaRequestMessage(String str, RequestStatsArgs requestStatsArgs) {
        this.modeltype = str;
        this.args = requestStatsArgs;
    }

    public RequestStatsArgs getArgs() {
        return this.args;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(RequestStatsArgs requestStatsArgs) {
        this.args = requestStatsArgs;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }
}
