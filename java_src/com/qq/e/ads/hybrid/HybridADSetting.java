package com.qq.e.ads.hybrid;
/* loaded from: classes4.dex */
public class HybridADSetting {
    public static final int TYPE_REWARD_VIDEO = 1;

    /* renamed from: f  reason: collision with root package name */
    private String f56327f;

    /* renamed from: g  reason: collision with root package name */
    private String f56328g;

    /* renamed from: h  reason: collision with root package name */
    private String f56329h;

    /* renamed from: a  reason: collision with root package name */
    private int f56322a = 1;

    /* renamed from: b  reason: collision with root package name */
    private int f56323b = 44;

    /* renamed from: c  reason: collision with root package name */
    private int f56324c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f56325d = -14013133;

    /* renamed from: e  reason: collision with root package name */
    private int f56326e = 16;

    /* renamed from: i  reason: collision with root package name */
    private int f56330i = -1776153;

    /* renamed from: j  reason: collision with root package name */
    private int f56331j = 16;

    public HybridADSetting backButtonImage(String str) {
        this.f56328g = str;
        return this;
    }

    public HybridADSetting backSeparatorLength(int i2) {
        this.f56331j = i2;
        return this;
    }

    public HybridADSetting closeButtonImage(String str) {
        this.f56329h = str;
        return this;
    }

    public String getBackButtonImage() {
        return this.f56328g;
    }

    public int getBackSeparatorLength() {
        return this.f56331j;
    }

    public String getCloseButtonImage() {
        return this.f56329h;
    }

    public int getSeparatorColor() {
        return this.f56330i;
    }

    public String getTitle() {
        return this.f56327f;
    }

    public int getTitleBarColor() {
        return this.f56324c;
    }

    public int getTitleBarHeight() {
        return this.f56323b;
    }

    public int getTitleColor() {
        return this.f56325d;
    }

    public int getTitleSize() {
        return this.f56326e;
    }

    public int getType() {
        return this.f56322a;
    }

    public HybridADSetting separatorColor(int i2) {
        this.f56330i = i2;
        return this;
    }

    public HybridADSetting title(String str) {
        this.f56327f = str;
        return this;
    }

    public HybridADSetting titleBarColor(int i2) {
        this.f56324c = i2;
        return this;
    }

    public HybridADSetting titleBarHeight(int i2) {
        this.f56323b = i2;
        return this;
    }

    public HybridADSetting titleColor(int i2) {
        this.f56325d = i2;
        return this;
    }

    public HybridADSetting titleSize(int i2) {
        this.f56326e = i2;
        return this;
    }

    public HybridADSetting type(int i2) {
        this.f56322a = i2;
        return this;
    }
}
