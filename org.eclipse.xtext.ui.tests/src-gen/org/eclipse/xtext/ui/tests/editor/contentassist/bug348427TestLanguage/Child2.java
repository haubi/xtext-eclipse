/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Child2</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child2#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child2#isBool <em>Bool</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child2#getString <em>String</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Bug348427TestLanguagePackage#getChild2()
 * @model
 * @generated
 */
public interface Child2 extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Bug348427TestLanguagePackage#getChild2_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child2#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Bool</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Bool</em>' attribute.
   * @see #setBool(boolean)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Bug348427TestLanguagePackage#getChild2_Bool()
   * @model
   * @generated
   */
  boolean isBool();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child2#isBool <em>Bool</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Bool</em>' attribute.
   * @see #isBool()
   * @generated
   */
  void setBool(boolean value);

  /**
   * Returns the value of the '<em><b>String</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>String</em>' attribute.
   * @see #setString(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Bug348427TestLanguagePackage#getChild2_String()
   * @model
   * @generated
   */
  String getString();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child2#getString <em>String</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>String</em>' attribute.
   * @see #getString()
   * @generated
   */
  void setString(String value);

} // Child2
