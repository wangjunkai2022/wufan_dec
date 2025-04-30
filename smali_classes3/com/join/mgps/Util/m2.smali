.class public final synthetic Lcom/join/mgps/Util/m2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity$x;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/Util/m2;->a:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iput p2, p0, Lcom/join/mgps/Util/m2;->b:I

    return-void
.end method


# virtual methods
.method public final clickAnydButn(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/Util/m2;->a:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iget v1, p0, Lcom/join/mgps/Util/m2;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/join/mgps/Util/UtilsMy$v;->a(Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method
