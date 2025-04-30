.class public Lcom/ss/android/download/api/model/d$a;
.super Ljava/lang/Object;
.source "QuickAppModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/download/api/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/download/api/model/d$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ss/android/download/api/model/d$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/d$a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ss/android/download/api/model/d$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/download/api/model/d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/ss/android/download/api/model/d;
    .locals 1

    .line 3
    new-instance v0, Lcom/ss/android/download/api/model/d;

    invoke-direct {v0, p0}, Lcom/ss/android/download/api/model/d;-><init>(Lcom/ss/android/download/api/model/d$a;)V

    return-object v0
.end method
