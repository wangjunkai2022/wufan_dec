.class Lcom/join/mgps/activity/MyVoucherGameActivity$b;
.super Ljava/lang/Object;
.source "MyVoucherGameActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyVoucherGameActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyVoucherGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyVoucherGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity$b;->a:Lcom/join/mgps/activity/MyVoucherGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity$b;->a:Lcom/join/mgps/activity/MyVoucherGameActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyVoucherGameActivity;->J0(Lcom/join/mgps/activity/MyVoucherGameActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity$b;->a:Lcom/join/mgps/activity/MyVoucherGameActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->F0()V

    return-void
.end method
