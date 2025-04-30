.class public Lcom/join/mgps/dto/FeedbackQuestionDetialBean;
.super Ljava/lang/Object;
.source "FeedbackQuestionDetialBean.java"


# instance fields
.field private info:Ljava/lang/String;

.field private showtype:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->info:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->showtype:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getShowtype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->showtype:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setShowtype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->showtype:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FeedbackQuestionDetialBean;->url:Ljava/lang/String;

    return-void
.end method
