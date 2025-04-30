.class public final synthetic Lcom/join/mgps/Util/l2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/papa91/common/RealNameCheckInfo;

.field public final synthetic d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

.field public final synthetic e:I

.field public final synthetic f:Lcom/join/mgps/dto/AccountBean;

.field public final synthetic g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/papa91/common/RealNameCheckInfo;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/l2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/join/mgps/Util/l2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/Util/l2;->c:Lcom/papa91/common/RealNameCheckInfo;

    iput-object p4, p0, Lcom/join/mgps/Util/l2;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iput p5, p0, Lcom/join/mgps/Util/l2;->e:I

    iput-object p6, p0, Lcom/join/mgps/Util/l2;->f:Lcom/join/mgps/dto/AccountBean;

    iput-object p7, p0, Lcom/join/mgps/Util/l2;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    return-void
.end method


# virtual methods
.method public final clickAnydButn(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 10

    iget-object v0, p0, Lcom/join/mgps/Util/l2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/join/mgps/Util/l2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/Util/l2;->c:Lcom/papa91/common/RealNameCheckInfo;

    iget-object v3, p0, Lcom/join/mgps/Util/l2;->d:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iget v4, p0, Lcom/join/mgps/Util/l2;->e:I

    iget-object v5, p0, Lcom/join/mgps/Util/l2;->f:Lcom/join/mgps/dto/AccountBean;

    iget-object v6, p0, Lcom/join/mgps/Util/l2;->g:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/join/mgps/Util/UtilsMy$v;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/papa91/common/RealNameCheckInfo;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method
