.class public Lw0/h/i/e$b;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Lw0/h/i/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/h/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lw0/h/i/e$b;->a:Landroid/view/GestureDetector;

    return-void
.end method
