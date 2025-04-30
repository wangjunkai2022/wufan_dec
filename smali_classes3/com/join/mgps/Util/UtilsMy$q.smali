.class Lcom/join/mgps/Util/UtilsMy$q;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/dialog/d$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->P2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$q;->a:Lcom/join/mgps/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$q;->a:Lcom/join/mgps/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
