.class Lcom/join/mgps/Util/UtilsMy$o;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->V1(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/dto/DownloadGameArgsBean;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$o;->c:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$o;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$o;->c:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-static {p1, p2, v0}, Lcom/join/mgps/Util/UtilsMy;->r(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DownloadGameArgsBean;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method
