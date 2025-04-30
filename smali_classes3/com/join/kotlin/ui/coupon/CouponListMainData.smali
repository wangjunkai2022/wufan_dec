.class public Lcom/join/kotlin/ui/coupon/CouponListMainData;
.super Ljava/lang/Object;
.source "CouponListMainData.java"


# instance fields
.field private game_coupon_for_bt_game:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_coupon_for_bt_game()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListMainData;->game_coupon_for_bt_game:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGame_coupon_for_bt_game(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListMainData;->game_coupon_for_bt_game:Ljava/util/ArrayList;

    return-void
.end method
