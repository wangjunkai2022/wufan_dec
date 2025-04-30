.class public Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    return-object v0
.end method

.method public b(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a:Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    return-void
.end method
