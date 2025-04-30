.class Lcom/join/mgps/customview/f$a;
.super Ljava/lang/Object;
.source "ForumExtFuncPopWindow_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/f;->j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field final synthetic b:Lcom/join/mgps/customview/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/f$a;->b:Lcom/join/mgps/customview/f;

    iput-object p2, p0, Lcom/join/mgps/customview/f$a;->a:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/f$a;->b:Lcom/join/mgps/customview/f;

    iget-object v1, p0, Lcom/join/mgps/customview/f$a;->a:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-static {v0, v1}, Lcom/join/mgps/customview/f;->s(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method
