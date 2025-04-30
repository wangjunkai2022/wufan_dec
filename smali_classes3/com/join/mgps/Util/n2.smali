.class public final synthetic Lcom/join/mgps/Util/n2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;


# instance fields
.field public final synthetic a:Lcom/papa91/arc/bean/PopwindowBean;

.field public final synthetic b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/n2;->a:Lcom/papa91/arc/bean/PopwindowBean;

    iput-object p2, p0, Lcom/join/mgps/Util/n2;->b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iput p3, p0, Lcom/join/mgps/Util/n2;->c:I

    iput-object p4, p0, Lcom/join/mgps/Util/n2;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final clickAnydButn(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 7

    iget-object v0, p0, Lcom/join/mgps/Util/n2;->a:Lcom/papa91/arc/bean/PopwindowBean;

    iget-object v1, p0, Lcom/join/mgps/Util/n2;->b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iget v2, p0, Lcom/join/mgps/Util/n2;->c:I

    iget-object v3, p0, Lcom/join/mgps/Util/n2;->d:Landroid/content/Context;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/join/mgps/Util/UtilsMy$w;->a(Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method
