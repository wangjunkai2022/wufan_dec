.class public Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/text/SpannableStringBuilder;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
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

.method public constructor <init>(ZLandroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->a:Z

    .line 10
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->b:Landroid/text/SpannableStringBuilder;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLandroid/text/SpannableStringBuilder;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/text/SpannableStringBuilder;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->a:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->b:Landroid/text/SpannableStringBuilder;

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->c:Z

    .line 6
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;->e:Ljava/util/List;

    return-void
.end method
