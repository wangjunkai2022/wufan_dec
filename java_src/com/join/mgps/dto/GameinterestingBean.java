package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GameinterestingBean implements Serializable {
    private List<RecomDatabean> bottom;
    private int dynamic_module_tpl_type;
    private ClassfyNewTag jump_type;
    private List<RecomDatabean> middle;
    private List<RecomDatabean> more;
    private List<RecomDatabean> top;

    /* loaded from: classes4.dex */
    class ClassfyNewTag {
        int play_type;
        int point_type;
        int theme_type;

        public ClassfyNewTag() {
        }

        public int getPlay_type() {
            return this.play_type;
        }

        public int getPoint_type() {
            return this.point_type;
        }

        public int getTheme_type() {
            return this.theme_type;
        }

        public void setPlay_type(int i2) {
            this.play_type = i2;
        }

        public void setPoint_type(int i2) {
            this.point_type = i2;
        }

        public void setTheme_type(int i2) {
            this.theme_type = i2;
        }
    }

    public GameinterestingBean() {
    }

    public List<RecomDatabean> getBottom() {
        return this.bottom;
    }

    public int getDynamic_module_tpl_type() {
        return this.dynamic_module_tpl_type;
    }

    public ClassfyNewTag getJump_type() {
        return this.jump_type;
    }

    public List<RecomDatabean> getMiddle() {
        return this.middle;
    }

    public List<RecomDatabean> getMore() {
        return this.more;
    }

    public List<RecomDatabean> getTop() {
        return this.top;
    }

    public void setBottom(List<RecomDatabean> list) {
        this.bottom = list;
    }

    public void setDynamic_module_tpl_type(int i2) {
        this.dynamic_module_tpl_type = i2;
    }

    public void setJump_type(ClassfyNewTag classfyNewTag) {
        this.jump_type = classfyNewTag;
    }

    public void setMiddle(List<RecomDatabean> list) {
        this.middle = list;
    }

    public void setMore(List<RecomDatabean> list) {
        this.more = list;
    }

    public void setTop(List<RecomDatabean> list) {
        this.top = list;
    }

    public GameinterestingBean(List<RecomDatabean> list, List<RecomDatabean> list2, List<RecomDatabean> list3, List<RecomDatabean> list4) {
        this.top = list;
        this.middle = list2;
        this.bottom = list3;
        this.more = list4;
    }
}
