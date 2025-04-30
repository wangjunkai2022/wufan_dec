package com.join.mgps.activity.recomend;

import com.join.mgps.dto.CollectionBeanSub;
/* loaded from: classes3.dex */
public class GamedownRecomendItemBean extends CollectionBeanSub {
    boolean hasSendData = false;
    private RecContext rec_context;

    /* loaded from: classes3.dex */
    public static class RecContext {
        private String position;
        private String scene;
        private String tid;
        private String version;

        public String getPosition() {
            return this.position;
        }

        public String getScene() {
            return this.scene;
        }

        public String getTid() {
            return this.tid;
        }

        public String getVersion() {
            return this.version;
        }

        public void setPosition(String str) {
            this.position = str;
        }

        public void setScene(String str) {
            this.scene = str;
        }

        public void setTid(String str) {
            this.tid = str;
        }

        public void setVersion(String str) {
            this.version = str;
        }
    }

    public RecContext getRec_context() {
        return this.rec_context;
    }

    public boolean isHasSendData() {
        return this.hasSendData;
    }

    public void setHasSendData(boolean z3) {
        this.hasSendData = z3;
    }

    public void setRec_context(RecContext recContext) {
        this.rec_context = recContext;
    }
}
