/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.impl;

import java.util.Collection;

import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

import org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.CommaExpression;
import org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.Expression;
import org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.ParameterizedExpressionsTestLanguagePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Comma Expression</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.impl.CommaExpressionImpl#getExprs <em>Exprs</em>}</li>
 * </ul>
 *
 * @generated
 */
public class CommaExpressionImpl extends ExpressionImpl implements CommaExpression
{
  /**
   * The cached value of the '{@link #getExprs() <em>Exprs</em>}' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getExprs()
   * @generated
   * @ordered
   */
  protected EList<Expression> exprs;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected CommaExpressionImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return ParameterizedExpressionsTestLanguagePackage.Literals.COMMA_EXPRESSION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EList<Expression> getExprs()
  {
    if (exprs == null)
    {
      exprs = new EObjectContainmentEList<Expression>(Expression.class, this, ParameterizedExpressionsTestLanguagePackage.COMMA_EXPRESSION__EXPRS);
    }
    return exprs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case ParameterizedExpressionsTestLanguagePackage.COMMA_EXPRESSION__EXPRS:
        return ((InternalEList<?>)getExprs()).basicRemove(otherEnd, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case ParameterizedExpressionsTestLanguagePackage.COMMA_EXPRESSION__EXPRS:
        return getExprs();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @SuppressWarnings("unchecked")
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case ParameterizedExpressionsTestLanguagePackage.COMMA_EXPRESSION__EXPRS:
        getExprs().clear();
        getExprs().addAll((Collection<? extends Expression>)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case ParameterizedExpressionsTestLanguagePackage.COMMA_EXPRESSION__EXPRS:
        getExprs().clear();
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case ParameterizedExpressionsTestLanguagePackage.COMMA_EXPRESSION__EXPRS:
        return exprs != null && !exprs.isEmpty();
    }
    return super.eIsSet(featureID);
  }

} //CommaExpressionImpl
