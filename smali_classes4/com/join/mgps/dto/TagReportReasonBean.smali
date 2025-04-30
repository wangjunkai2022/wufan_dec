.class public Lcom/join/mgps/dto/TagReportReasonBean;
.super Ljava/lang/Object;
.source "TagReportReasonBean.java"


# instance fields
.field private checked:Z

.field private text:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/TagReportReasonBean;->checked:Z

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/TagReportReasonBean;->type:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/TagReportReasonBean;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TagReportReasonBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TagReportReasonBean;->type:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/TagReportReasonBean;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/TagReportReasonBean;->checked:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TagReportReasonBean;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TagReportReasonBean;->type:I

    return-void
.end method
