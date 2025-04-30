.class public Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;
.super Ljava/lang/Object;
.source "ForumBannerBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestMessagesArgs"
.end annotation


# instance fields
.field private area_id:I

.field private pn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;->pn:I

    .line 4
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;->area_id:I

    return-void
.end method


# virtual methods
.method public getArea_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;->area_id:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;->pn:I

    return v0
.end method

.method public setArea_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;->area_id:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean$RequestMessagesArgs;->pn:I

    return-void
.end method
