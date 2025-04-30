.class Lcom/join/mgps/fragment/i3$h;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Lcom/join/mgps/dialog/a0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3;->y0(Lcom/join/mgps/dto/CloudListDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic b:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$h;->b:Lcom/join/mgps/fragment/i3;

    iput-object p2, p0, Lcom/join/mgps/fragment/i3$h;->a:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/a0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dialog/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$h;->b:Lcom/join/mgps/fragment/i3;

    const-string v0, "\u63cf\u8ff0\u4fe1\u606f\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$h;->b:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    const-string v1, "\u5b58\u6863\u5206\u4eab\u4e2d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$h;->b:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    const-string v1, "\u53d6\u6d88\u5206\u4eab"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$h;->b:Lcom/join/mgps/fragment/i3;

    iget-boolean v1, v0, Lcom/join/mgps/fragment/i3;->o0:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5df2\u6709\u4e0a\u4f20\u8fdb\u884c\u4e2d"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$h;->b:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->D:Lcom/join/mgps/dialog/x;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/i3$h;->a:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/a0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/fragment/i3;->r0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$h;->b:Lcom/join/mgps/fragment/i3;

    iget-boolean v1, v0, Lcom/join/mgps/fragment/i3;->K:Z

    if-nez v1, :cond_3

    .line 10
    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
