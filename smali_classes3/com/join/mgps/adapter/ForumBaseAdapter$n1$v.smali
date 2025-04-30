.class public Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;
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
    name = "v"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->b:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->c:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->d:I

    .line 6
    iput p4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->e:I

    .line 7
    iput-boolean p5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->f:Z

    .line 8
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->g:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->h:Ljava/util/List;

    .line 10
    iput-boolean p8, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->a:Z

    .line 11
    iput-object p9, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->i:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public a()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->i:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
