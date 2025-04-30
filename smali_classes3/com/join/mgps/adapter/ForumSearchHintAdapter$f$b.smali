.class public Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;
.super Ljava/lang/Object;
.source "ForumSearchHintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->b:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->a:Ljava/lang/String;

    return-void
.end method
