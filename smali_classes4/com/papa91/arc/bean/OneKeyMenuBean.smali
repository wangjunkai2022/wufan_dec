.class public Lcom/papa91/arc/bean/OneKeyMenuBean;
.super Ljava/lang/Object;
.source "OneKeyMenuBean.java"


# instance fields
.field private iconRes:I

.field private iconResNormal:I

.field private isCurrent:Z

.field private name:Ljava/lang/String;

.field private skillBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->iconRes:I

    return v0
.end method

.method public getIconResNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->iconResNormal:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSkillBean()Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->skillBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->isCurrent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->name:Ljava/lang/String;

    const-string v1, "\u7a7a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCurrent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->isCurrent:Z

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->iconRes:I

    return-void
.end method

.method public setIconResNormal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->iconResNormal:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSkillBean(Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->skillBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/OneKeyMenuBean;->text:Ljava/lang/String;

    return-void
.end method
