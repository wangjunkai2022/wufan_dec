.class Lcom/join/mgps/Util/UtilsMy$p;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->b:Ljava/lang/String;

    iput p3, p0, Lcom/join/mgps/Util/UtilsMy$p;->c:I

    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$p;->d:I

    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$p;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$p;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/join/mgps/Util/UtilsMy$p;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/join/mgps/Util/UtilsMy$p;->h:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/join/mgps/Util/UtilsMy$p;->i:Z

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
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$p;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->b:Ljava/lang/String;

    const-string v0, "gameDownloadDetail"

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    iget p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->c:I

    const-string v0, "_from"

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    iget p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->d:I

    const-string v0, "_from_type"

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->e:Ljava/lang/String;

    const-string v0, "recPosition"

    .line 2
    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->f:Ljava/lang/String;

    const-string v0, "remarks"

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->g:Ljava/lang/String;

    const-string v0, "nodeId"

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->h:Ljava/lang/String;

    const-string v0, "volcanoOther"

    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    iget-boolean p2, p0, Lcom/join/mgps/Util/UtilsMy$p;->i:Z

    const-string v0, "fromRecomDown"

    .line 3
    invoke-virtual {p1, v0, p2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method
