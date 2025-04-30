.class Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;
.super Ljava/lang/Object;
.source "ForumProfileMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->g(Landroid/view/View;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->e:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->a:I

    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->b:I

    iput p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->c:I

    iput-object p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->e:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->e:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->a:I

    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->b:I

    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->c:I

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;->a(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method
