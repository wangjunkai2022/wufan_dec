.class public Lcom/join/mgps/adapter/GameTopicAdapter$g$a;
.super Ljava/lang/Object;
.source "GameTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GameTopicAdapter$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->d:I

    .line 6
    iput p5, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;->e:I

    return-void
.end method
