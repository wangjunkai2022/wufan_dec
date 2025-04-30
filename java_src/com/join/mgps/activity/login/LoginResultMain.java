package com.join.mgps.activity.login;
/* loaded from: classes3.dex */
public class LoginResultMain<E> {
    private E data;
    private int error;
    private String msg;

    /* loaded from: classes3.dex */
    public static class DataBean {
        private boolean is_new_members;

        public boolean isIs_new_members() {
            return this.is_new_members;
        }

        public void setIs_new_members(boolean z3) {
            this.is_new_members = z3;
        }
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setData(E e4) {
        this.data = e4;
    }

    public void setError(int i2) {
        this.error = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
