.class public Lcom/mob/commons/dialog/entity/InternalPolicyUi;
.super Lcom/mob/commons/dialog/entity/BaseEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private contentText:Ljava/lang/String;

.field private negativeBtnText:Ljava/lang/String;

.field private positiveBtnText:Ljava/lang/String;

.field private titleText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mob/commons/dialog/entity/BaseEntity;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->access$000(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->titleText:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->access$100(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->contentText:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->access$200(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->positiveBtnText:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->access$300(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->negativeBtnText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;Lcom/mob/commons/dialog/entity/InternalPolicyUi$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi;-><init>(Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;)V

    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->negativeBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->positiveBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/commons/dialog/entity/InternalPolicyUi;->titleText:Ljava/lang/String;

    return-object v0
.end method
