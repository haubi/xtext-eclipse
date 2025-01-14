/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.outline.outlineTest;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Element</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getXrefs <em>Xrefs</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getChildren <em>Children</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.OutlineTestPackage#getElement()
 * @model
 * @generated
 */
public interface Element extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.OutlineTestPackage#getElement_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Xrefs</b></em>' reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Xrefs</em>' reference list.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.OutlineTestPackage#getElement_Xrefs()
   * @model
   * @generated
   */
  EList<Element> getXrefs();

  /**
   * Returns the value of the '<em><b>Children</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Children</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.OutlineTestPackage#getElement_Children()
   * @model containment="true"
   * @generated
   */
  EList<Element> getChildren();

} // Element
