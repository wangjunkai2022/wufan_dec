.class final Lorg/androidannotations/api/c$b;
.super Lorg/androidannotations/api/c;
.source "ViewServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/androidannotations/api/c;-><init>(Lorg/androidannotations/api/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/androidannotations/api/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public i(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public r(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public t(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public u()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
