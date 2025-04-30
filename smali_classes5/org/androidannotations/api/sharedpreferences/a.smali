.class public abstract Lorg/androidannotations/api/sharedpreferences/a;
.super Ljava/lang/Object;
.source "AbstractPrefEditorField.java"


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
.field protected final a:Lorg/androidannotations/api/sharedpreferences/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    .line 3
    iput-object p2, p0, Lorg/androidannotations/api/sharedpreferences/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/androidannotations/api/sharedpreferences/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/e;->f()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    return-object v0
.end method
