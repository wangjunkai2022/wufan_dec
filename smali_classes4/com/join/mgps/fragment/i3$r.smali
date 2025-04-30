.class Lcom/join/mgps/fragment/i3$r;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Lcom/join/mgps/dialog/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3;->l0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$r;->b:Lcom/join/mgps/fragment/i3;

    iput-object p2, p0, Lcom/join/mgps/fragment/i3$r;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$r;->b:Lcom/join/mgps/fragment/i3;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3$r;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/i3;->R(Lcom/join/mgps/fragment/i3;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$r;->b:Lcom/join/mgps/fragment/i3;

    invoke-static {v0}, Lcom/join/mgps/fragment/i3;->P(Lcom/join/mgps/fragment/i3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$r;->b:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
