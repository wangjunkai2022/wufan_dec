.class Lcom/BaseAppCompatActivity$m;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->showDownLoadVersionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;Lcom/join/mgps/dialog/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$m;->c:Lcom/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/BaseAppCompatActivity$m;->a:Lcom/join/mgps/dialog/d;

    iput-object p3, p0, Lcom/BaseAppCompatActivity$m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$m;->a:Lcom/join/mgps/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    iget-object v1, p0, Lcom/BaseAppCompatActivity$m;->b:Ljava/lang/String;

    const-string v2, "gameDownloadDetail2"

    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 2
    iget-object v0, p0, Lcom/BaseAppCompatActivity$m;->a:Lcom/join/mgps/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
