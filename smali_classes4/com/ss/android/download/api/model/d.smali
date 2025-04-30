.class public Lcom/ss/android/download/api/model/d;
.super Ljava/lang/Object;
.source "QuickAppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/d$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/ss/android/download/api/model/d$a;->a(Lcom/ss/android/download/api/model/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/d;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/ss/android/download/api/model/d$a;->b(Lcom/ss/android/download/api/model/d$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/model/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/download/api/model/d;->a:Ljava/lang/String;

    return-object v0
.end method
