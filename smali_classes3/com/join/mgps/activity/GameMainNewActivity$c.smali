.class Lcom/join/mgps/activity/GameMainNewActivity$c;
.super Ljava/lang/Object;
.source "GameMainNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainNewActivity;->Q(Lcom/join/mgps/dto/GameMainV3DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainV3DataBean;

.field final synthetic b:Lcom/join/mgps/activity/GameMainNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;Lcom/join/mgps/dto/GameMainV3DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/activity/GameMainNewActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->b:Lcom/join/mgps/activity/GameMainNewActivity;

    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getLink_type()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getJump_type()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$c;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean;->getSurface_bottom_ad()Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainV3DataBean$Surface_bottom_ad;->getLink_type_val()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/GameMainNewActivity;->I(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
