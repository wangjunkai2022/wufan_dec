.class public abstract Lorg/androidannotations/api/sharedpreferences/e;
.super Ljava/lang/Object;
.source "EditorHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/androidannotations/api/sharedpreferences/e<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lorg/androidannotations/api/sharedpreferences/e;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private c()Lorg/androidannotations/api/sharedpreferences/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/e;->a:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lorg/androidannotations/api/sharedpreferences/m;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/c;

    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/e;->c()Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/c;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lorg/androidannotations/api/sharedpreferences/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/e;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2
    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/e;->c()Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object v0

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/f;

    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/e;->c()Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/f;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-object v0
.end method

.method protected f()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/e;->a:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method protected g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/h;

    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/e;->c()Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/h;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-object v0
.end method

.method protected h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/j;

    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/e;->c()Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/j;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-object v0
.end method

.method protected i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/o;

    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/e;->c()Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/o;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-object v0
.end method

.method protected j(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/androidannotations/api/sharedpreferences/q<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/q;

    invoke-direct {p0}, Lorg/androidannotations/api/sharedpreferences/e;->c()Lorg/androidannotations/api/sharedpreferences/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/q;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    return-object v0
.end method
