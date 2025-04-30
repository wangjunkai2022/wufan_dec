.class public Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"

# interfaces
.implements Lcom/join/android/app/component/optimizetext/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;Z",
            "Landroid/text/SpannableStringBuilder;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->a:Z

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->c:Z

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->e:I

    .line 8
    iput p6, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->f:I

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->g:Z

    .line 10
    iput-object p8, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->h:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->i:Ljava/util/List;

    .line 12
    iput-boolean p10, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->j:Z

    .line 13
    iput-object p11, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->k:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public a()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->k:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
