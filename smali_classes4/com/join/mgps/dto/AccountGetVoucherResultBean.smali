.class public Lcom/join/mgps/dto/AccountGetVoucherResultBean;
.super Ljava/lang/Object;
.source "AccountGetVoucherResultBean.java"


# instance fields
.field private add_time:J

.field private begin_time:J

.field private coupon_code:Ljava/lang/String;

.field private coupon_id:I

.field private coupon_money:I

.field private expire_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_code:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_id:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_money:I

    .line 6
    iput-wide p4, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->begin_time:J

    .line 7
    iput-wide p6, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->expire_time:J

    .line 8
    iput-wide p8, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->add_time:J

    return-void
.end method


# virtual methods
.method public getAdd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->add_time:J

    return-wide v0
.end method

.method public getBegin_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->begin_time:J

    return-wide v0
.end method

.method public getCoupon_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCoupon_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_id:I

    return v0
.end method

.method public getCoupon_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_money:I

    return v0
.end method

.method public getExpire_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->expire_time:J

    return-wide v0
.end method

.method public setAdd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->add_time:J

    return-void
.end method

.method public setBegin_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->begin_time:J

    return-void
.end method

.method public setCoupon_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_code:Ljava/lang/String;

    return-void
.end method

.method public setCoupon_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_id:I

    return-void
.end method

.method public setCoupon_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->coupon_money:I

    return-void
.end method

.method public setExpire_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->expire_time:J

    return-void
.end method
