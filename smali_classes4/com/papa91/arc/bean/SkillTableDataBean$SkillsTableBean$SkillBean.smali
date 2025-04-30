.class public Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;
.super Ljava/lang/Object;
.source "SkillTableDataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkillBean"
.end annotation


# instance fields
.field private _Index:I

.field private skill_key:Ljava/lang/String;

.field private skill_name:Ljava/lang/String;

.field private skill_noSP:Ljava/lang/String;

.field private skill_set:Ljava/lang/String;

.field private skill_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkill_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_key:Ljava/lang/String;

    return-object v0
.end method

.method public getSkill_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSkill_noSP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_noSP:Ljava/lang/String;

    return-object v0
.end method

.method public getSkill_set()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_set:Ljava/lang/String;

    return-object v0
.end method

.method public getSkill_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_type:Ljava/lang/String;

    return-object v0
.end method

.method public get_Index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->_Index:I

    return v0
.end method

.method public setSkill_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_key:Ljava/lang/String;

    return-void
.end method

.method public setSkill_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_name:Ljava/lang/String;

    return-void
.end method

.method public setSkill_noSP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_noSP:Ljava/lang/String;

    return-void
.end method

.method public setSkill_set(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_set:Ljava/lang/String;

    return-void
.end method

.method public setSkill_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->skill_type:Ljava/lang/String;

    return-void
.end method

.method public set_Index(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->_Index:I

    return-void
.end method
