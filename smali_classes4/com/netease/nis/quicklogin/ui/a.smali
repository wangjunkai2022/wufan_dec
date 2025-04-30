.class public Lcom/netease/nis/quicklogin/ui/a;
.super Landroid/text/style/ClickableSpan;
.source "YDClickableSpan.java"


# instance fields
.field private final a:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/a;->a:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/ui/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/nis/quicklogin/ui/a;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/netease/nis/quicklogin/ui/a;->d:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/a;->a:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/netease/nis/quicklogin/ui/a;->d:I

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/netease/nis/quicklogin/listener/ClickEventListener;->onClick(II)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/a;->b:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/a;->c:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void
.end method
