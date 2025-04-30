.class public Lcom/join/mgps/dto/ForumProfileMessageData;
.super Ljava/lang/Object;
.source "ForumProfileMessageData.java"


# instance fields
.field private message_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;"
        }
    .end annotation
.end field

.field private un_read_praise_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumProfileMessageData;->message_list:Ljava/util/List;

    return-object v0
.end method

.method public getUn_read_praise_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumProfileMessageData;->un_read_praise_count:I

    return v0
.end method

.method public setMessage_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumProfileMessageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumProfileMessageData;->message_list:Ljava/util/List;

    return-void
.end method

.method public setUn_read_praise_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumProfileMessageData;->un_read_praise_count:I

    return-void
.end method
