.class public Lcom/papa91/arc/bean/TypeBean;
.super Ljava/lang/Object;
.source "TypeBean.java"


# instance fields
.field private iconNormal:I

.field private iconSelected:I

.field private isSelected:Z

.field private name:Ljava/lang/String;

.field private showDot:Z

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/papa91/arc/bean/TypeBean;->type:I

    .line 3
    iput-object p2, p0, Lcom/papa91/arc/bean/TypeBean;->name:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/papa91/arc/bean/TypeBean;->isSelected:Z

    .line 5
    iput p4, p0, Lcom/papa91/arc/bean/TypeBean;->iconNormal:I

    .line 6
    iput p5, p0, Lcom/papa91/arc/bean/TypeBean;->iconSelected:I

    return-void
.end method


# virtual methods
.method public getIconNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/TypeBean;->iconNormal:I

    return v0
.end method

.method public getIconSelected()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/TypeBean;->iconSelected:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/TypeBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/TypeBean;->type:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/TypeBean;->isSelected:Z

    return v0
.end method

.method public isShowDot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/TypeBean;->showDot:Z

    return v0
.end method

.method public setIconNormal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/TypeBean;->iconNormal:I

    return-void
.end method

.method public setIconSelected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/TypeBean;->iconSelected:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/TypeBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/bean/TypeBean;->isSelected:Z

    return-void
.end method

.method public setShowDot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/bean/TypeBean;->showDot:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/TypeBean;->type:I

    return-void
.end method
