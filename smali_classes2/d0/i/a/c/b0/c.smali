.class public Ld0/i/a/c/b0/c;
.super Lw0/h/i/a;
.source "ClockFaceView.java"


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0/i/a/c/b0/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Lw0/h/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lw0/h/i/a0/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lw0/h/i/a;->b:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lw0/h/i/a0/b;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    sget v0, Lcom/google/android/material/R$id;->material_value_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    iget-object v0, p0, Ld0/i/a/c/b0/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 6
    iget-object v0, v0, Lcom/google/android/material/timepicker/ClockFaceView;->H:Landroid/util/SparseArray;

    add-int/lit8 v1, v3, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 8
    iget-object v1, p2, Lw0/h/i/a0/b;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    .line 10
    invoke-static/range {v1 .. v6}, Lw0/h/i/a0/b$c;->a(IIIIZZ)Lw0/h/i/a0/b$c;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Lw0/h/i/a0/b;->j(Ljava/lang/Object;)V

    return-void
.end method
