.class Lcom/join/mgps/activity/MyVoucherGameActivity_$e;
.super Ljava/lang/Object;
.source "MyVoucherGameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyVoucherGameActivity_;->P0(Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ResultMyVoucherGameBean;

.field final synthetic b:Lcom/join/mgps/activity/MyVoucherGameActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyVoucherGameActivity_;Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_$e;->b:Lcom/join/mgps/activity/MyVoucherGameActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_$e;->a:Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_$e;->b:Lcom/join/mgps/activity/MyVoucherGameActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity_$e;->a:Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->S0(Lcom/join/mgps/activity/MyVoucherGameActivity_;Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V

    return-void
.end method
