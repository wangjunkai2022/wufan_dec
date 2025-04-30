.class public Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;
.super Ljava/lang/Object;
.source "SkillTableDataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/bean/SkillTableDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkillsTableBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;
    }
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private cha_value:I

.field private mount:I

.field private name:Ljava/lang/String;

.field private skill:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;",
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
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCha_value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->cha_value:I

    return v0
.end method

.method public getMount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->mount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSkill()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->skill:Ljava/util/List;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->alias:Ljava/lang/String;

    return-void
.end method

.method public setCha_value(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->cha_value:I

    return-void
.end method

.method public setMount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->mount:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSkill(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->skill:Ljava/util/List;

    return-void
.end method
