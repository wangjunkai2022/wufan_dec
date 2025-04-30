.class Lcom/join/mgps/dialog/f$c;
.super Ljava/lang/Object;
.source "AppUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-object p1, p1, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-object p1, p1, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-boolean v0, p1, Lcom/join/mgps/dialog/f;->f:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-object v1, v1, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/dto/VersionDto;

    invoke-virtual {v1}, Lcom/join/mgps/dto/VersionDto;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-object v1, v1, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/join/mgps/dialog/f;->b(Lcom/join/mgps/dialog/f;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/service/UpdateService_;->p(Landroid/content/Context;)Lcom/join/mgps/service/UpdateService_$a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-object v0, v0, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/dto/VersionDto;

    invoke-virtual {v0}, Lcom/join/mgps/dto/VersionDto;->getAndroidUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/UpdateService_$a;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-boolean v0, p1, Lcom/join/mgps/dialog/f;->e:Z

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/f$c;->a:Lcom/join/mgps/dialog/f;

    iget-object p1, p1, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u66f4\u65b0\u5305\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
