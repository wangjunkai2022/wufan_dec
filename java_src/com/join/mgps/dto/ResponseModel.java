package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ResponseModel<E> {
    private int code;
    private E data;
    private int error;
    private int flag;
    private String message;
    private String msg;
    private int page;
    private String version;

    public ResponseModel() {
    }

    public int getCode() {
        return this.code;
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public int getFlag() {
        return this.flag;
    }

    public String getMessage() {
        return this.message;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getPage() {
        return this.page;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(E e4) {
        this.data = e4;
    }

    public void setError(int i2) {
        this.error = i2;
    }

    public void setFlag(int i2) {
        this.flag = i2;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public ResponseModel(int i2, String str) {
        this.code = i2;
        this.flag = i2;
        this.message = str;
        this.msg = str;
    }

    public ResponseModel(int i2, int i4, String str) {
        this.code = i2;
        this.flag = i2;
        this.error = i4;
        this.message = str;
        this.msg = str;
    }
}
