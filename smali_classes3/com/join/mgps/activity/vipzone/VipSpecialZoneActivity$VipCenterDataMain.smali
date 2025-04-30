.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;
.super Ljava/lang/Object;
.source "VipSpecialZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipCenterDataMain"
.end annotation


# static fields
.field public static final GAMELIST:I = 0x2

.field public static final HLIST:I = 0x4

.field public static final LINE:I = 0x5

.field public static final TITLE:I = 0x3

.field public static final VIEWPAGER:I = 0x1


# instance fields
.field object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

.field type:I


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->type:I

    .line 3
    iput-object p3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->type:I

    return v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->object:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->type:I

    return-void
.end method
