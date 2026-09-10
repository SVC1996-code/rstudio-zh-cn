/*
 * RmdTemplateDisplayNames.java
 *
 * Copyright (C) 2026 by the RStudio Simplified Chinese localization contributors
 *
 * This program is licensed to you under the terms of version 3 of the
 * GNU Affero General Public License. This program is distributed WITHOUT
 * ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
 * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
 * AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
 */
package org.rstudio.studio.client.rmarkdown.ui;

import java.util.HashMap;
import java.util.Map;

import com.google.gwt.core.client.GWT;

import org.rstudio.studio.client.rmarkdown.RMarkdownConstants;

public final class RmdTemplateDisplayNames
{
   public static String formatLabel(String templateName,
                                    String formatName,
                                    String fallbackUiName)
   {
      return resolveLabel(formatLabels_,
                          formatIdentity(templateName, formatName),
                          fallbackUiName,
                          formatName);
   }

   public static String categoryLabel(String rawCategory,
                                      String fallbackCategory)
   {
      return resolveLabel(categoryLabels_,
                          rawCategory,
                          fallbackCategory,
                          rawCategory);
   }

   private static Map<String, String> createFormatLabels()
   {
      Map<String, String> labels = new HashMap<>();
      addFormatLabel(labels, "Document", "html_notebook",
                     constants_.rmdFormatHtmlNotebookLabel());
      addFormatLabel(labels, "Document", "html_document",
                     constants_.rmdFormatHtmlDocumentLabel());
      addFormatLabel(labels, "Document", "pdf_document",
                     constants_.rmdFormatPdfDocumentLabel());
      addFormatLabel(labels, "Document", "word_document",
                     constants_.rmdFormatWordDocumentLabel());
      addFormatLabel(labels, "Presentation", "ioslides_presentation",
                     constants_.rmdFormatIoslidesPresentationLabel());
      addFormatLabel(labels, "Presentation", "slidy_presentation",
                     constants_.rmdFormatSlidyPresentationLabel());
      addFormatLabel(labels, "Presentation", "beamer_presentation",
                     constants_.rmdFormatBeamerPresentationLabel());
      addFormatLabel(labels, "Presentation", "powerpoint_presentation",
                     constants_.rmdFormatPowerPointPresentationLabel());
      return labels;
   }

   private static Map<String, String> createCategoryLabels()
   {
      Map<String, String> labels = new HashMap<>();
      addCategoryLabel(labels, "General", constants_.rmdCategoryGeneralLabel());
      addCategoryLabel(labels, "Advanced", constants_.rmdCategoryAdvancedLabel());
      addCategoryLabel(labels, "Figures", constants_.rmdCategoryFiguresLabel());
      return labels;
   }

   private static void addFormatLabel(Map<String, String> labels,
                                      String templateName,
                                      String formatName,
                                      String label)
   {
      labels.put(formatIdentity(templateName, formatName), label);
   }

   private static void addCategoryLabel(Map<String, String> labels,
                                        String rawCategory,
                                        String label)
   {
      labels.put(rawCategory, label);
   }

   private static String formatIdentity(String templateName, String formatName)
   {
      return templateName + "::" + formatName;
   }

   private static String resolveLabel(Map<String, String> labels,
                                      String identity,
                                      String fallbackLabel,
                                      String identityFallback)
   {
      String label = labels.get(identity);
      if (label != null && label.length() > 0)
         return label;
      if (fallbackLabel != null && fallbackLabel.length() > 0)
         return fallbackLabel;
      if (identityFallback != null && identityFallback.length() > 0)
         return identityFallback;
      return "Unknown";
   }

   private static final RMarkdownConstants constants_ =
         GWT.create(RMarkdownConstants.class);
   private static final Map<String, String> formatLabels_ = createFormatLabels();
   private static final Map<String, String> categoryLabels_ = createCategoryLabels();

   private RmdTemplateDisplayNames()
   {
   }
}
