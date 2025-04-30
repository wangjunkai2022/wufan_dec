.class public Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lcom/join/mgps/dto/ForumBean$GameInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->a:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-void
.end method
