.class public Lcom/ta/utdid2/android/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
