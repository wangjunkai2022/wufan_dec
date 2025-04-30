.class public Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->a:Z

    .line 4
    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->b:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;->c:Ljava/lang/String;

    return-void
.end method
