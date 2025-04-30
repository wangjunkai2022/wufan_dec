.class Lcom/join/mgps/activity/ShareWebActivity$o$l0$a;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o$l0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity$o$l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o$l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l0$a;->a:Lcom/join/mgps/activity/ShareWebActivity$o$l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l0$a;->a:Lcom/join/mgps/activity/ShareWebActivity$o$l0;

    iget-object p2, p1, Lcom/join/mgps/activity/ShareWebActivity$o$l0;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object p2, p2, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$o$l0;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ShareWebActivity;->T1(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method
